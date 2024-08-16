<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TelType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;


class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, [
                'attr' => [
                    'class' => 'form-control my-3',
                    'placeholder' => 'Name',
                ],
            ])
            ->add('date', DateTimeType::class, [
                'widget' => 'single_text',
                'attr' => [
                    'class' => 'form-control my-3',
                    'placeholder' => 'Date and Time',
                ],
            ])
            ->add('description', TextareaType::class, [
                'attr' => [
                    'class' => 'form-control my-3',
                    'placeholder' => 'Description',
                ],
            ])
            ->add('photo', TextType::class, [
                'attr' => [
                    'class' => 'form-control my-3',
                    'placeholder' => 'Photo URL',
                ],
            ])
            ->add('capacity', IntegerType::class, [
                'attr' => [
                    'class' => 'form-control my-3',
                    'placeholder' => 'Capacity',
                ],
            ])
            ->add('email', EmailType::class, [
                'attr' => [
                    'class' => 'form-control my-3',
                    'placeholder' => 'Email',
                ],
            ])
            ->add('phone_number', TelType::class, [
                'attr' => [
                    'class' => 'form-control my-3',
                    'placeholder' => 'Phone Number',
                ],
            ])
            ->add('address', TextType::class, [
                'attr' => [
                    'class' => 'form-control my-3',
                    'placeholder' => 'Address',
                ],
            ])
            ->add('type', ChoiceType::class, [
                'label' => false,
                'attr' => [
                    'class' => 'form-control my-3',
                ],
                'choices'  => [
                    'Music' => 'music',
                    'Sport' => 'sport',
                    'Movie' => 'movie',
                    'Theater' => 'theater',
                ],
                'placeholder' => 'Select Type',
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
